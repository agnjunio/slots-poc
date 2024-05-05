import sys

from pathlib import Path
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtQuickControls2 import QQuickStyle


def run():
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()
    QQuickStyle.setStyle("Fusion")

    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(qml_file)

    if not engine.rootObjects():
        return -1

    root = engine.rootObjects()[0]
    root.loginClicked.connect(login)

    return app.exec()


def login(username, password):
    print("login:", username, " password: ", password)


if __name__ == "__main__":
    sys.exit(run())
