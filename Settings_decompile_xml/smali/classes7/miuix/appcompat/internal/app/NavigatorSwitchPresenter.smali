.class public Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;
.super Ljava/lang/Object;
.source "NavigatorSwitchPresenter.java"


# instance fields
.field private mAlpha:F

.field private final mNavigatorSwitch:Landroid/view/View;

.field private mSuppressAlpha:Z

.field private mSuppressVisibility:Z

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    return-void
.end method


# virtual methods
.method public suppressAlpha(ZF)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    if-eqz p1, :cond_0

    .line 39
    iget-object p0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    iget p0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public suppressVisibility(ZI)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    if-eqz p1, :cond_0

    .line 23
    iget-object p0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    iget p0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
