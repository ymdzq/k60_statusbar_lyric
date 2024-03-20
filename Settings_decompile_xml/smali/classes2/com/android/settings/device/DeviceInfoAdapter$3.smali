.class Lcom/android/settings/device/DeviceInfoAdapter$3;
.super Landroid/text/style/ClickableSpan;
.source "DeviceInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/DeviceInfoAdapter;->initExternalRamIcon(Landroid/content/Context;Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceInfoAdapter;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/content/Context;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter$3;->this$0:Lcom/android/settings/device/DeviceInfoAdapter;

    iput-object p2, p0, Lcom/android/settings/device/DeviceInfoAdapter$3;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter$3;->this$0:Lcom/android/settings/device/DeviceInfoAdapter;

    iget-object p0, p0, Lcom/android/settings/device/DeviceInfoAdapter$3;->val$ctx:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/settings/device/DeviceInfoAdapter;->-$$Nest$mbuildAlertDialog(Lcom/android/settings/device/DeviceInfoAdapter;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
