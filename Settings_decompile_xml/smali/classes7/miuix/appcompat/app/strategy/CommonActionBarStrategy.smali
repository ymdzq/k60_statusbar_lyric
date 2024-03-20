.class public Lmiuix/appcompat/app/strategy/CommonActionBarStrategy;
.super Ljava/lang/Object;
.source "CommonActionBarStrategy.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .locals 7

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 17
    new-instance p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    invoke-direct {p0}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    .line 18
    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->actionBarWidthDp:I

    const/16 v0, 0x3c0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    .line 20
    iput v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 21
    iput-boolean v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 22
    iput v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto/16 :goto_1

    :cond_0
    int-to-float v0, p1

    .line 23
    iget v3, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float v4, v3

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    const/16 v4, 0x29e

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-gez v0, :cond_5

    .line 25
    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    const/16 v0, 0x19a

    if-ne p2, v6, :cond_1

    if-gt v3, v4, :cond_2

    :cond_1
    if-le p1, v0, :cond_4

    .line 28
    :cond_2
    iput v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 29
    iput-boolean v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    if-ge p1, v0, :cond_3

    .line 31
    iput v6, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_1

    .line 33
    :cond_3
    iput v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_1

    .line 36
    :cond_4
    iput-boolean v5, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 37
    iput v6, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_1

    .line 41
    :cond_5
    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-ne p1, v6, :cond_6

    if-gt v3, v4, :cond_8

    :cond_6
    if-ne p1, v5, :cond_7

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-gt v3, v0, :cond_8

    :cond_7
    if-ne p1, v1, :cond_9

    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    .line 48
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x226

    if-gt p1, v0, :cond_9

    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    iget v0, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    if-le p1, v0, :cond_9

    .line 51
    :cond_8
    iput v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 52
    iput-boolean v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_0

    .line 53
    :cond_9
    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowMode:I

    invoke-static {p1}, Lmiuix/core/util/ScreenModeHelper;->isInSplitScreenMode(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->deviceType:I

    if-eq p1, v6, :cond_a

    .line 55
    iget p1, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowHeightDp:I

    int-to-float p1, p1

    iget p2, p2, Lmiuix/appcompat/app/strategy/ActionBarSpec;->windowWidthDp:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    const p2, 0x3fd9999a    # 1.7f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_b

    .line 58
    iput v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 59
    iput-boolean v2, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    goto :goto_0

    .line 63
    :cond_a
    iput-boolean v5, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    .line 65
    :cond_b
    :goto_0
    iput v1, p0, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_1

    :cond_c
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
