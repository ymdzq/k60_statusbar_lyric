.class public final Landroidx/core/os/LocaleListPlatformWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# instance fields
.field public final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Landroid/os/LocaleList;

    .line 5
    iput-object p1, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/os/LocaleListInterface;

    .line 2
    invoke-interface {p1}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final getLocaleList()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    invoke-virtual {p0}, Landroid/os/LocaleList;->hashCode()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 2
    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
