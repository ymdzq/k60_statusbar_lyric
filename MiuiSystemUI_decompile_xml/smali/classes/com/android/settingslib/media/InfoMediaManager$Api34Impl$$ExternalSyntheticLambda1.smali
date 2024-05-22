.class public final synthetic Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/media/MediaRoute2Info;

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->isSystemRoute()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
