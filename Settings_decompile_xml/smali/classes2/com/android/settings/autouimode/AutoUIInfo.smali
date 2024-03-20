.class public Lcom/android/settings/autouimode/AutoUIInfo;
.super Ljava/lang/Object;
.source "AutoUIInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/autouimode/AutoUIInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private enabled:Z

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p2, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mAppName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mPkg:Ljava/lang/String;

    .line 17
    iput-boolean p4, p0, Lcom/android/settings/autouimode/AutoUIInfo;->enabled:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/autouimode/AutoUIInfo;)I
    .locals 0

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/android/settings/autouimode/AutoUIInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/autouimode/AutoUIInfo;->compareTo(Lcom/android/settings/autouimode/AutoUIInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 54
    instance-of v0, p1, Lcom/android/settings/autouimode/AutoUIInfo;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppName()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/settings/autouimode/AutoUIInfo;

    invoke-virtual {p1}, Lcom/android/settings/autouimode/AutoUIInfo;->getmAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 57
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getmAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getmAppName()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getmPkg()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIInfo;->mAppName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/android/settings/autouimode/AutoUIInfo;->enabled:Z

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/autouimode/AutoUIInfo;->enabled:Z

    return-void
.end method
