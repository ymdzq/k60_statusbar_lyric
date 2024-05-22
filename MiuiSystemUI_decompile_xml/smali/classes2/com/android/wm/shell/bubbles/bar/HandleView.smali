.class public Lcom/android/wm/shell/bubbles/bar/HandleView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    const/16 p1, 0x11

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public setCornerRadius(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 10
    move-result v2

    .line 13
    float-to-int p1, p1

    .line 14
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 15
    return-void
    .line 18
.end method
