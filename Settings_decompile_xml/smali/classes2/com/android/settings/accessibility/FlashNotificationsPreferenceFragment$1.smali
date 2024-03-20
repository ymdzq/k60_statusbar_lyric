.class Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "FlashNotificationsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$1;->this$0:Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->-$$Nest$monSettingChanged(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;)V

    return-void
.end method
