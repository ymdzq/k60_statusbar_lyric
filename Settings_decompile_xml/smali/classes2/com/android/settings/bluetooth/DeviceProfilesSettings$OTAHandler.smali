.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;
.super Landroid/os/Handler;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OTAHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/app/Activity;)V
    .locals 1

    .line 4081
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4082
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 4083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OTAHandler () "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceProfilesSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 4086
    iget v0, p1, Landroid/os/Message;->what:I

    .line 4087
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 4088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DeviceProfilesSettings"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/settings/R$id;->update_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/Button;)V

    .line 4091
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/settings/R$id;->latest_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/TextView;)V

    const/16 p1, 0x67

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, p1, :cond_4

    const/16 p1, 0x191

    const/16 v5, 0x8

    if-eq v0, p1, :cond_1

    const/16 p1, 0x192

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4104
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 4105
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4107
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4108
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 4109
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4110
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V

    goto/16 :goto_0

    .line 4133
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4134
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->handle_ota_connect_first:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "checkResult"

    .line 4114
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 4115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 4117
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4118
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmLatestText(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4120
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4121
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 4122
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdateBtn(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$msetOnClick(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/Button;)V

    goto :goto_0

    .line 4125
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4126
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 4127
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4128
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V

    goto :goto_0

    .line 4097
    :cond_4
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4098
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmOTAState(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 4099
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 4100
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$OTAHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmDownloadDialog(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lmiuix/appcompat/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4138
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
