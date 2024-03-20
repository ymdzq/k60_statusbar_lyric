.class Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "FlashNotificationsPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->-$$Nest$fgetmContext(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
