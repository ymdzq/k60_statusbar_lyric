.class final Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $receiverPermission:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/broadcast/BroadcastSender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;->this$0:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;->$intent:Landroid/content/Intent;

    .line 4
    const-string p1, "com.android.systemui.permission.SELF"

    .line 6
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;->$receiverPermission:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;->this$0:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/broadcast/BroadcastSender;->context:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;->$intent:Landroid/content/Intent;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcast$2;->$receiverPermission:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 10
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    return-object p0
    .line 15
.end method
