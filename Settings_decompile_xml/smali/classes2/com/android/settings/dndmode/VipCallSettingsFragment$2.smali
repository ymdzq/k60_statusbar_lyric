.class Lcom/android/settings/dndmode/VipCallSettingsFragment$2;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dndmode/VipCallSettingsFragment;->createVipList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

.field final synthetic val$vipList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->val$vipList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 158
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    .line 159
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->val$vipList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$maddCustomGroup(Lcom/android/settings/dndmode/VipCallSettingsFragment;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$mremoveCustomGroup(Lcom/android/settings/dndmode/VipCallSettingsFragment;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$fgetmConfig(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 167
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 168
    iput p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 169
    iget-object p0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$2;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/dndmode/VipCallSettingsFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    const/4 p0, 0x1

    return p0
.end method
