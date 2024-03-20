.class Lcom/android/settings/notification/MiuiZenModeSettings$1;
.super Ljava/lang/Object;
.source "MiuiZenModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/MiuiZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/MiuiZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings$1;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    .line 127
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings$1;->this$0:Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-static {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->-$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method
