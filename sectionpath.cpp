#include "sectionpath.h"

SectionPath::SectionPath()
    :m_x(0),m_y(0)
{
    qDebug() << "SectionPath constructor ";
}

void SectionPath::addCordinates(int new_x,int new_y)
{
    qDebug() << "Sundeep >>>> addCordinates new_x: " << new_x <<"  new_y: "<< new_y;
    Cordinates* cord = new Cordinates();
    cord->x = new_x;
    cord->y = new_y;
    m_cordinates.append(cord);
}

void SectionPath::getCordinated()
{
    int count = m_cordinates.count();
    for(int index = count - 1; index >= 0 ; index--)
    {
        qDebug() << "Sundeep >>>> getCordinated index: " << index;
        qDebug() << "Sundeep >>>> getCordinated m_cordinates.back()->x: " << m_cordinates.back()->x <<"  m_cordinates.back()->y: "<< m_cordinates.back()->y;
        setX(m_cordinates.back()->x);
        setY(m_cordinates.back()->y);
        m_cordinates.pop_back();
    }
}

int SectionPath::getX()
{

    return m_x;
}

void SectionPath::setX(int x)
{
    m_x = x;
}

int SectionPath::getY()
{
    return m_y;
}

void SectionPath::setY(int y)
{
    m_y = y;
}
