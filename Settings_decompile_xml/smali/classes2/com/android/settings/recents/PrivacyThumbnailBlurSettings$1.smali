.class Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyThumbnailBlurSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$1;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings$1;->this$0:Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;

    invoke-static {p0}, Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;->-$$Nest$mloadPackages(Lcom/android/settings/recents/PrivacyThumbnailBlurSettings;)V

    return-void
.end method
