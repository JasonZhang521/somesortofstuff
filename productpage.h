#ifndef PRODUCTPAGE_H
#define PRODUCTPAGE_H

#include <QWidget>

namespace Ui {
class ProductPage;
}

class ProductPage : public QWidget
{
    Q_OBJECT

public:
    explicit ProductPage(QWidget *parent = 0);
    ~ProductPage();

private slots:
    void on_pushButton_next_clicked();

private:
    Ui::ProductPage *ui;
};

#endif // PRODUCTPAGE_H
