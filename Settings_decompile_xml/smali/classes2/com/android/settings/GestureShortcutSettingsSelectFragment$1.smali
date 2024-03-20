.class Lcom/android/settings/GestureShortcutSettingsSelectFragment$1;
.super Ljava/lang/Object;
.source "GestureShortcutSettingsSelectFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GestureShortcutSettingsSelectFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GestureShortcutSettingsSelectFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$1;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 151
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.voiceassist"

    const-string v1, "com.xiaomi.voiceassistant.AiSettings.AiSettingsActivity"

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 155
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsSelectFragment$1;->this$0:Lcom/android/settings/GestureShortcutSettingsSelectFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method
