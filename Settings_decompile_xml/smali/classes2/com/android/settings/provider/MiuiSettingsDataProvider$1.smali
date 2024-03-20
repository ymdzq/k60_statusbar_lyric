.class Lcom/android/settings/provider/MiuiSettingsDataProvider$1;
.super Landroid/os/Handler;
.source "MiuiSettingsDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/provider/MiuiSettingsDataProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/provider/MiuiSettingsDataProvider;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fgetmOriginHotspotMaxNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore hotspot num: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v2}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fgetmOriginHotspotMaxNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiSettingsDataProvider"

    invoke-static {v2, v0}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fgetmOriginHotspotMaxNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$msetHotSpotMaxStationNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;I)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v0, v1}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fputmOriginHotspotMaxNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;I)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$mresetCellularState(Lcom/android/settings/provider/MiuiSettingsDataProvider;)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fgetmOriginNetworkPriorityMode(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v3}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fgetmOriginNetworkPriorityMode(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->setTrafficPriority(Landroid/content/Context;I)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore mOriginNetworkPriorityMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v3}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fgetmOriginNetworkPriorityMode(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;->this$0:Lcom/android/settings/provider/MiuiSettingsDataProvider;

    invoke-static {v0, v1}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->-$$Nest$fputmOriginNetworkPriorityMode(Lcom/android/settings/provider/MiuiSettingsDataProvider;I)V

    .line 88
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
