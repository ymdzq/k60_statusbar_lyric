.class public Lcom/android/settings/display/PageLayoutScreenView;
.super Lmiui/view/ScreenView;
.source "PageLayoutScreenView.java"

# interfaces
.implements Lmiui/view/ScreenView$SnapScreenOnceNotification;


# instance fields
.field private final TOTAL_PAGES:I

.field private mActivity:Landroid/app/Activity;

.field private final mIsDarkMode:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/PageLayoutScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lmiui/view/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 15
    iput p2, p0, Lcom/android/settings/display/PageLayoutScreenView;->TOTAL_PAGES:I

    new-array p2, p2, [Z

    .line 17
    iput-object p2, p0, Lcom/android/settings/display/PageLayoutScreenView;->mIsDarkMode:[Z

    .line 25
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings/display/PageLayoutScreenView;->mActivity:Landroid/app/Activity;

    const/4 p0, 0x0

    const/4 p1, 0x1

    aput-boolean p1, p2, p0

    aput-boolean p0, p2, p1

    return-void
.end method

.method private setDarkMode(Z)V
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/android/settings/display/PageLayoutScreenView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setExtraFlags(II)V

    return-void
.end method


# virtual methods
.method public onSnapCancelled(Lmiui/view/ScreenView;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSnapEnd(Lmiui/view/ScreenView;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/android/settings/display/PageLayoutScreenView;->mIsDarkMode:[Z

    invoke-virtual {p0}, Lmiui/view/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    aget-boolean p1, p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PageLayoutScreenView;->setDarkMode(Z)V

    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3, p0}, Lmiui/view/ScreenView;->snapToScreen(IIZLmiui/view/ScreenView$SnapScreenOnceNotification;)V

    return-void
.end method
