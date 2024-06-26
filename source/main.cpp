#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "ribbonui.h"

#ifdef RIBBONUI_BUILD_STATIC_LIB
Q_IMPORT_QML_PLUGIN(RibbonUIPlugin)
#endif

#define STR(x) #x
#define JOIN(a,b,c) STR(a.b.c)
#define VER_JOIN(x) JOIN(x)
int main(int argc, char *argv[])
{
    RibbonUI::init(); // Must set before QGuiApplication
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    RibbonUI::registerTypes(&engine);
    const QUrl url("qrc:/qt/qml/"+QString(KGCAPP_URI)+"/qml/main.qml"); // Edit your main page here
    engine.rootContext()->setContextProperty("KGCAppUri", QString(KGCAPP_URI)); // Edit your custom app uri here
    engine.rootContext()->setContextProperty("KGCAppVersion", VER_JOIN(KGCAPP_VERSION)); // Edit your app version here
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
