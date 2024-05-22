.class final Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$mNm$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$mNm$2;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController$mNm$2;->this$0:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->context:Landroid/content/Context;

    .line 4
    const-string v0, "notification"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/NotificationManager;

    .line 12
    return-object p0
    .line 14
.end method
