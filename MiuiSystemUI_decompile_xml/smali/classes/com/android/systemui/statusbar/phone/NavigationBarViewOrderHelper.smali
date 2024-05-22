.class public abstract Lcom/android/systemui/statusbar/phone/NavigationBarViewOrderHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sKeyIdSet:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, 0x7f0a05ab    # @id/menu

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 8
    const v1, 0x7f0a077e    # @id/recent_apps

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 15
    const v2, 0x7f0a00fb    # @id/back

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 22
    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    .line 23
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 27
    move-result-object v0

    .line 30
    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewOrderHelper;->sKeyIdSet:Ljava/util/Set;

    .line 31
    return-void
    .line 33
.end method
