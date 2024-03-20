.class Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;
.super Ljava/lang/Object;
.source "RingtoneCardGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/coolsound/RingtoneCardGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    instance-of v1, p1, Lcom/android/settings/sound/coolsound/RingtoneItem;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 164
    move-object v1, p1

    check-cast v1, Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {v1}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 166
    :goto_0
    instance-of v3, p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    if-eqz v3, :cond_1

    .line 167
    check-cast p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->getType()I

    move-result v1

    :cond_1
    if-eq v1, v2, :cond_2

    .line 171
    iget-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-static {p1, v1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->-$$Nest$mgetPicker(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_a

    .line 173
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-static {v1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->-$$Nest$fgetmIsThemeRingtoneAccess(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.action.VIEW"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "theme://zhuti.xiaomi.com/settingsringtone?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&miback=true&miref="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-static {p1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->-$$Nest$fgetmContext(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)Landroid/content/Context;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-static {p1}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->-$$Nest$fgetmContext(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 189
    :catch_0
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-static {p0}, Lcom/android/settings/sound/coolsound/RingtoneCardGridView;->-$$Nest$fgetmContext(Lcom/android/settings/sound/coolsound/RingtoneCardGridView;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->thememanager_not_found:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    goto :goto_3

    .line 193
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const-string/jumbo v1, "miui.intent.action.COOL_SOUND_PHONE"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ringtone_type"

    .line 195
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "miui.intent.action.ALARM_RINGTONE_PICKER"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    :goto_2
    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneCardGridView$2;->this$0:Lcom/android/settings/sound/coolsound/RingtoneCardGridView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result p0

    if-eqz p0, :cond_9

    if-eq p0, v2, :cond_8

    const/4 p1, 0x4

    if-eq p0, p1, :cond_7

    const/4 p1, 0x5

    if-eq p0, p1, :cond_6

    goto :goto_3

    :cond_6
    const-string/jumbo p0, "sound_vibration_notifications_click"

    .line 211
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo p0, "sound_vibration_calender_click"

    .line 208
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string/jumbo p0, "sound_vibration_alarm_click"

    .line 205
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string/jumbo p0, "sound_vibration_ringtone_click"

    .line 202
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
