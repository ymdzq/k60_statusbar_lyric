.class Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;
.super Landroid/os/AsyncTask;
.source "MiuiZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/MiuiZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateVipLabelTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 335
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_0
    sget-boolean p1, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz p1, :cond_1

    .line 341
    sget p1, Lcom/android/settings/R$array;->new_dndm_vip_list_group_array:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settings/R$array;->dndm_vip_list_group_array:I

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 343
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_2

    .line 344
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmConfig(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    iget p0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    goto :goto_1

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {v0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmConfig(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 346
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p1}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->dndm_vip_call_summary_custom:I

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p0

    .line 347
    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->getCustomVipListCount(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 346
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 349
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmConfig(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    iget p0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    aget-object p0, p1, p0

    :goto_1
    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 357
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmVip(Lcom/android/settings/notification/MiuiZenModeSettings;)Lcom/android/settings/dndmode/LabelPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method
