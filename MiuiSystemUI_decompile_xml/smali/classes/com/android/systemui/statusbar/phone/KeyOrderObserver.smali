.class public final Lcom/android/systemui/statusbar/phone/KeyOrderObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sKeyIdSet:Ljava/util/HashSet;


# instance fields
.field public keyOrderCallback:Lkotlin/jvm/functions/Function0;

.field public final observer:Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver;->sKeyIdSet:Ljava/util/HashSet;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyOrderObserver;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver;->observer:Lcom/android/systemui/statusbar/phone/KeyOrderObserver$observer$1;

    .line 10
    sget-object p0, Lcom/android/systemui/statusbar/phone/KeyOrderObserver;->sKeyIdSet:Ljava/util/HashSet;

    .line 12
    const v0, 0x7f0a05ab    # @id/menu

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    const v0, 0x7f0a03fd    # @id/home

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    const v0, 0x7f0a077e    # @id/recent_apps

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    const v0, 0x7f0a00fb    # @id/back

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
    .line 54
.end method
