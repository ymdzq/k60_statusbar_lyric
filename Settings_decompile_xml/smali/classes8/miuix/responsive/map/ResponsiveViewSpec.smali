.class public Lmiuix/responsive/map/ResponsiveViewSpec;
.super Ljava/lang/Object;
.source "ResponsiveViewSpec.java"


# instance fields
.field private mEffectiveScreenOrientation:I

.field private mHideInScreenMode:I

.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    .line 19
    iput p2, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    return-void
.end method


# virtual methods
.method public getEffectiveScreenOrientation()I
    .locals 0

    .line 46
    iget p0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mEffectiveScreenOrientation:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getViewId()I
    .locals 0

    .line 30
    iget p0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mViewId:I

    return p0
.end method

.method public onResponsiveState(Lmiuix/responsive/map/ScreenSpec;)V
    .locals 1

    .line 23
    iget p1, p1, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    and-int/lit8 p1, p1, 0x7

    .line 24
    iget-object v0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 25
    iget p0, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mHideInScreenMode:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setEffectiveScreenOrientation(I)V
    .locals 0

    .line 50
    iput p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mEffectiveScreenOrientation:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lmiuix/responsive/map/ResponsiveViewSpec;->mView:Landroid/view/View;

    return-void
.end method
