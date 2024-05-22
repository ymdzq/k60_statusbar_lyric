.class final Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$activityStarter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$activityStarter$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$activityStarter$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$activityStarter$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$activityStarter$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$activityStarter$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 8
    return-object p0
    .line 10
.end method
