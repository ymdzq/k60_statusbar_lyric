.class public Lcom/android/settings/applicationmode/AppItemInfo;
.super Ljava/lang/Object;
.source "AppItemInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applicationmode/AppItemInfo$AppState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applicationmode/AppItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

.field private mItemType:I

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/applicationmode/AppItemInfo$AppState;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    iput-object p2, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mAppName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mPkg:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    .line 29
    iput p5, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mItemType:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/applicationmode/AppItemInfo;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 4
    check-cast p1, Lcom/android/settings/applicationmode/AppItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/applicationmode/AppItemInfo;->compareTo(Lcom/android/settings/applicationmode/AppItemInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 140
    instance-of v0, p1, Lcom/android/settings/applicationmode/AppItemInfo;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/applicationmode/AppItemInfo;->getPkg()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/settings/applicationmode/AppItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/applicationmode/AppItemInfo;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 143
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppState()Lcom/android/settings/applicationmode/AppItemInfo$AppState;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mItemType:I

    return p0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public isOpenEmbedded()Z
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->EMBEDDED:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAppState(I)V
    .locals 3

    .line 73
    iget v0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mItemType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_2

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isJ18Device()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_0

    .line 80
    :cond_2
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_2

    .line 76
    :cond_3
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_2

    :cond_4
    if-ne v0, v1, :cond_a

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_8

    if-eq p1, v2, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    goto :goto_2

    .line 101
    :cond_5
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_2

    .line 97
    :cond_6
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isJ18Device()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_1

    .line 98
    :cond_7
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    :goto_1
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_2

    .line 94
    :cond_8
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_2

    .line 91
    :cond_9
    sget-object p1, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->EMBEDDED:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    :cond_a
    :goto_2
    return-void
.end method

.method public setAppState(Lcom/android/settings/applicationmode/AppItemInfo$AppState;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    return-void
.end method

.method public setItemType(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mItemType:I

    return-void
.end method

.method public stateToMode()I
    .locals 4

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applicationmode/AppItemInfo;->isOpenEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 114
    :cond_0
    iget v0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mItemType:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 115
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_1

    goto :goto_2

    .line 117
    :cond_1
    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_8

    .line 120
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isJ18Device()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_8

    .line 123
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppItemInfo;->mCurrentState:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_4

    :goto_0
    move v1, v2

    goto :goto_2

    .line 125
    :cond_4
    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FOUR:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_6

    :cond_5
    :goto_1
    move v1, v3

    goto :goto_2

    .line 127
    :cond_6
    sget-object v0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_NINE:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    if-ne p0, v0, :cond_8

    .line 128
    invoke-static {}, Lcom/android/settings/applicationmode/RemoteUtils;->isJ18Device()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 p0, 0x3

    move v1, p0

    goto :goto_2

    :cond_8
    const/4 v1, -0x1

    :goto_2
    return v1
.end method
