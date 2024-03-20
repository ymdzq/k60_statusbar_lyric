.class Lcom/android/settings/wfd/MiuiWifiDisplaySettings$1;
.super Ljava/lang/Object;
.source "MiuiWifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/MiuiWifiDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/MiuiWifiDisplaySettings;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/wfd/MiuiWifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/wfd/MiuiWifiDisplaySettings$1;->this$0:Lcom/android/settings/wfd/MiuiWifiDisplaySettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/wfd/MiuiWifiDisplaySettings;->-$$Nest$menableWifiDisplay(Lcom/android/settings/wfd/MiuiWifiDisplaySettings;Z)V

    return-void
.end method
