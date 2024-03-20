.class final Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $receiverPermission:Ljava/lang/String;

.field final synthetic $userHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/systemui/broadcast/BroadcastSender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->this$0:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->$intent:Landroid/content/Intent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->$userHandle:Landroid/os/UserHandle;

    .line 6
    const-string p1, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 8
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->$receiverPermission:Ljava/lang/String;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->this$0:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/broadcast/BroadcastSender;->context:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->$intent:Landroid/content/Intent;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->$userHandle:Landroid/os/UserHandle;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastSender$sendBroadcastAsUser$2;->$receiverPermission:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    return-object p0
    .line 17
.end method
