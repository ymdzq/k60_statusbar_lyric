.class public Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.source "SecondaryExpandTabContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;->getTabContainerHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setContentHeight(I)V

    return-void
.end method


# virtual methods
.method protected getDefaultTabTextStyle()I
    .locals 0

    .line 21
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryExpandStyle:I

    return p0
.end method

.method protected getTabActivatedTextStyle()I
    .locals 0

    .line 26
    sget p0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryExpandStyle:I

    return p0
.end method

.method getTabContainerHeight()I
    .locals 0

    .line 0
    const/4 p0, -0x2

    return p0
.end method
