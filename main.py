import sys

from pathlib import Path
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine


def run():
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(qml_file)

    if not engine.rootObjects():
        return -1

    return app.exec()


if __name__ == "__main__":
    sys.exit(run())