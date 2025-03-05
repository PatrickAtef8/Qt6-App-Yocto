#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "../inc/controller.h"  

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    Controller controller;  
    engine.rootContext()->setContextProperty("controller", &controller);  // Expose Controller to QML

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
