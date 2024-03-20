.class public final Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "A11yMenuAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final notificationsIntent:Landroid/content/Intent;

.field private final quickSettingsIntent:Landroid/content/Intent;

.field public final service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

.field private final shortcutDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$78858qpO8qodQYsWTtjNKZ6pF04(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->lambda$onClick$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    .line 54
    iput-object p2, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->shortcutDataList:Ljava/util/List;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    new-instance p1, Landroid/content/Intent;

    const-string p2, "action_panels_operation"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "reverse_quick_settings_panel"

    const-string/jumbo v1, "operation"

    .line 57
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->quickSettingsIntent:Landroid/content/Intent;

    .line 58
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "reverse_notifications_panel"

    .line 59
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->notificationsIntent:Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->hideMenu()Z

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->shortcutDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->shortcutDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->shortcutDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;

    iget p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->inflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/android/settings/R$layout;->grid_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;)V

    .line 80
    sget v0, Lcom/android/settings/R$id;->shortcutIconBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    .line 81
    sget v0, Lcom/android/settings/R$id;->shortcutLabel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;

    .line 87
    iget-object v0, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    iget v1, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->shortcutId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget v2, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->imgContentDescription:I

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/AccessibilityService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->labelText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    iget p1, p1, Lcom/android/settings/accessibility/accessibilitymenu/model/A11yMenuShortcut;->imageSrc:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 91
    iget-object p1, p3, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$ViewHolder;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 133
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object v0, p1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 134
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->audioManager:Landroid/media/AudioManager;

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object p1, p1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto/16 :goto_1

    .line 130
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {p1, v2}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto/16 :goto_1

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    .line 127
    new-instance v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 123
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 120
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->notificationsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 117
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->quickSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 114
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_1

    .line 104
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->startActivityIfIntentIsSafe(Landroid/content/Intent;I)V

    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lmiui/settings/splitlib/SplitUtils;->startSettingsSplitActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_1

    .line 100
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->startActivityIfIntentIsSafe(Landroid/content/Intent;I)V

    .line 144
    :goto_1
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter;->service:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->hideMenu()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
