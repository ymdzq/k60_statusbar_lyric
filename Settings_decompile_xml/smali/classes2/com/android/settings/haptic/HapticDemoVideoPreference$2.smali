.class Lcom/android/settings/haptic/HapticDemoVideoPreference$2;
.super Ljava/lang/Object;
.source "HapticDemoVideoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/HapticDemoVideoPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/HapticDemoVideoPreference;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$2;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$2;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p1}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDemoVideoPreference$2;->this$0:Lcom/android/settings/haptic/HapticDemoVideoPreference;

    invoke-static {p0}, Lcom/android/settings/haptic/HapticDemoVideoPreference;->-$$Nest$fgetmBgHandler(Lcom/android/settings/haptic/HapticDemoVideoPreference;)Lcom/android/settings/haptic/HapticDemoVideoPreference$BgHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
