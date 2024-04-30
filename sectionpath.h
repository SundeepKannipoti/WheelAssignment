#ifndef SECTIONPATH_H
#define SECTIONPATH_H
#include <QObject>
#include <QDebug>
#include <QAbstractListModel>

struct Cordinates
{
    int x;
    int y;
};

class SectionPath : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int x READ getX WRITE setX NOTIFY onXChanged)
    Q_PROPERTY(int y READ getY WRITE setY NOTIFY onYChanged)

public:
    SectionPath();


    Q_INVOKABLE void addCordinates(int x, int y);
    Q_INVOKABLE void getCordinated();

    int getX();
    void setX(int x);

    int getY();
    void setY(int y);

signals:
    void onXChanged();
    void onYChanged();

private:

    QList<Cordinates* > m_cordinates;
    int m_x;
    int m_y;

};

#endif // SECTIONPATH_H
