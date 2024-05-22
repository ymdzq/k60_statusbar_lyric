.class public abstract Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sSnoozeNotify:Z = false

.field public static sSnoozeUntil:J = 0x0L

.field public static sUserSelected:Z = false


# direct methods
.method public static miuiHeadsUpInset(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0703d2    # @dimen/heads_up_status_bar_padding '7.27dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    const/4 v2, 0x2

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    return v1

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 23
    move-result p0

    .line 26
    add-int/2addr p0, v1

    .line 27
    return p0
    .line 28
.end method
