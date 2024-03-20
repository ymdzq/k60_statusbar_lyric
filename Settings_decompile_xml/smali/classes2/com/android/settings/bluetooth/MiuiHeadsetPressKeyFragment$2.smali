.class Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;
.super Ljava/lang/Object;
.source "MiuiHeadsetPressKeyFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "MiuiHeadsetPressKeyFragment"

    const/4 v1, 0x0

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "preference changed service is null"

    .line 389
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 392
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "RadioButtonPreference cann\'t change to false."

    .line 393
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 396
    :cond_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    const/4 v2, 0x1

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    if-nez p2, :cond_2

    goto/16 :goto_5

    .line 403
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v3, -0x425d0d05

    if-eq p2, v3, :cond_4

    const v3, 0x3a6de1a7

    if-eq p2, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "config_call_mi_ai"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_1

    :cond_4
    const-string p2, "config_noise_control"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string/jumbo p2, "right"

    const-string v3, "left"

    if-eqz p1, :cond_a

    if-eq p1, v2, :cond_6

    goto/16 :goto_4

    .line 420
    :cond_6
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 421
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 423
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 424
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 426
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "06"

    if-eqz p1, :cond_8

    .line 427
    :try_start_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean v2, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftKey:Z

    .line 428
    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fputmLL(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 429
    :cond_8
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 430
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean v2, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightKey:Z

    .line 431
    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fputmRR(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V

    .line 433
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mshowNoiseControlList(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V

    goto :goto_4

    .line 405
    :cond_a
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 406
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 407
    :cond_b
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 409
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "00"

    if-eqz p1, :cond_c

    .line 410
    :try_start_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean v1, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mLeftKey:Z

    .line 411
    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fputmLL(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V

    goto :goto_3

    .line 412
    :cond_c
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 413
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    iput-boolean v1, p1, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->mRightKey:Z

    .line 414
    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fputmRR(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V

    .line 416
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmTitle(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mremoveNoiseControlList(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;Ljava/lang/String;)V

    .line 438
    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$mupdateKeyPressConfig(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)V

    return v2

    .line 397
    :cond_f
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RadioButtonPreference is null:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmCallAI(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    if-nez p2, :cond_10

    move p2, v2

    goto :goto_6

    :cond_10
    move p2, v1

    :goto_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;->-$$Nest$fgetmNoiseControl(Lcom/android/settings/bluetooth/MiuiHeadsetPressKeyFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_7

    :cond_11
    move v2, v1

    :goto_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "preference listener error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
