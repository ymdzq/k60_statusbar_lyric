.class public final synthetic Lcom/android/systemui/qs/tiles/UserDetailView$Adapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    .line 2
    iget-boolean p0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    .line 4
    xor-int/lit8 p0, p0, 0x1

    .line 6
    return p0
    .line 8
.end method
