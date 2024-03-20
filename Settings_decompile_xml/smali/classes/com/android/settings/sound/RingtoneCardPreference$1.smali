.class Lcom/android/settings/sound/RingtoneCardPreference$1;
.super Ljava/lang/Object;
.source "RingtoneCardPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/RingtoneCardPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/RingtoneCardPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingtoneCardPreference;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startActivityDeskClock(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 371
    invoke-static {p2}, Lcom/android/settings/MiuiUtils;->isDeskClockExist(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 374
    invoke-static {p2}, Lcom/android/settings/sound/RingtoneCardPreference;->getDefaultAlarmRingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v0, "miui.intent.action.RINGTONE_PICKER"

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.thememanager"

    const-string v1, "com.android.thememanager.activity.ThemeTabActivity"

    .line 376
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 377
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "android.intent.extra.ringtone.DEFAULT_URI"

    const/4 v0, 0x4

    .line 379
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v1, 0x1

    .line 380
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "android.intent.extra.ringtone.TYPE"

    .line 381
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x3

    .line 382
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "com.android.deskclock"

    const-string v0, "com.android.deskclock.settings.AlarmRingtonePickerActivity"

    .line 386
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startActivityDeskClock fail: com.android.deskclock installed,because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RingtoneCardPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    instance-of v1, p1, Lcom/android/settings/sound/coolsound/RingtoneItem;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 309
    move-object v1, p1

    check-cast v1, Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {v1}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 311
    :goto_0
    instance-of v3, p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    if-eqz v3, :cond_1

    .line 312
    check-cast p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->getType()I

    move-result v1

    :cond_1
    if-eq v1, v2, :cond_2

    .line 316
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-static {p1, v1}, Lcom/android/settings/sound/RingtoneCardPreference;->-$$Nest$mgetPicker(Lcom/android/settings/sound/RingtoneCardPreference;I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_a

    .line 318
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-static {v1}, Lcom/android/settings/sound/RingtoneCardPreference;->-$$Nest$fgetmIsThemeRingtoneAccess(Lcom/android/settings/sound/RingtoneCardPreference;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.intent.action.VIEW"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "theme://zhuti.xiaomi.com/settingsringtone?type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&miback=true&miref="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-static {p1}, Lcom/android/settings/sound/RingtoneCardPreference;->-$$Nest$fgetmContext(Lcom/android/settings/sound/RingtoneCardPreference;)Landroid/content/Context;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 332
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-static {p1}, Lcom/android/settings/sound/RingtoneCardPreference;->-$$Nest$fgetmContext(Lcom/android/settings/sound/RingtoneCardPreference;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 334
    :catch_0
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-static {p0}, Lcom/android/settings/sound/RingtoneCardPreference;->-$$Nest$fgetmContext(Lcom/android/settings/sound/RingtoneCardPreference;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->thememanager_not_found:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    goto :goto_3

    .line 338
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const-string/jumbo v1, "miui.intent.action.COOL_SOUND_PHONE"

    .line 339
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ringtone_type"

    .line 340
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "miui.intent.action.ALARM_RINGTONE_PICKER"

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference$1;->this$0:Lcom/android/settings/sound/RingtoneCardPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/sound/RingtoneCardPreference$1;->startActivityDeskClock(Landroid/content/Intent;Landroid/content/Context;)V

    .line 346
    :goto_2
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
    const-string p0, "MiuiSettings"

    const-string/jumbo p1, "sound_vibration_notifications_click"

    .line 359
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo p0, "sound_vibration_calender_click"

    .line 355
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string/jumbo p0, "sound_vibration_alarm_click"

    .line 352
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string/jumbo p0, "sound_vibration_ringtone_click"

    .line 348
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method
