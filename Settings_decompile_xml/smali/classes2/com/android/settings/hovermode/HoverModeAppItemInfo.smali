.class public Lcom/android/settings/hovermode/HoverModeAppItemInfo;
.super Ljava/lang/Object;
.source "HoverModeAppItemInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/hovermode/HoverModeAppItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-object p2, p0, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/hovermode/HoverModeAppItemInfo;)I
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->compareTo(Lcom/android/settings/hovermode/HoverModeAppItemInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 27
    instance-of v0, p1, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/settings/hovermode/HoverModeAppItemInfo;

    invoke-virtual {p1}, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 30
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeAppItemInfo;->mAppName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
