.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->title:Landroid/widget/TextView;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    move-object v0, v1

    .line 15
    :cond_0
    const v2, 0x7f1403cc    # @style/TextAppearance.Dialog.Title

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->doneButton:Landroid/widget/Button;

    .line 24
    if-nez p0, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    move-object v1, p0

    .line 29
    :goto_0
    const p0, 0x7f1406ad    # @style/Widget.Dialog.Button

    .line 30
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setTextAppearance(I)V

    .line 33
    return-void

    .line 36
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 39
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 41
    move-result v1

    .line 44
    check-cast v0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 45
    const-string v2, "accessibility_font_scaling_has_been_changed"

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 52
    const-string v1, "1"

    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 59
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 61
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 63
    move-result v0

    .line 66
    check-cast p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 67
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 69
    :cond_2
    return-void

    .line 72
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$changeFontSize$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->lastProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 81
    move-result p0

    .line 84
    aget-object p0, v1, p0

    .line 85
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 87
    move-result v1

    .line 90
    const-string v2, "font_scale"

    .line 91
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/systemui/util/settings/SystemSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 93
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 98
.end method
