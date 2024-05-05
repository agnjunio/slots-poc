import sys

from pathlib import Path
from PyQt6.QtQml import QQmlApplicationEngine
from PyQt6.QtWidgets import QApplication


def run():
    app = QApplication(sys.argv)

    engine = QQmlApplicationEngine()
    qml_file = Path(__file__).resolve().parent / "main.qml"
    engine.load(qml_file.as_uri())

    if not engine.rootObjects():
        return -1

    return app.exec()


def main():
    print("hot reload")


if __name__ == '__main__':
    sys.exit(run())
