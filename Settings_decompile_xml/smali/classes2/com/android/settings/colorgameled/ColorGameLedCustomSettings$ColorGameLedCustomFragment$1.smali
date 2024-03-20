.class Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment$1;
.super Ljava/lang/Object;
.source "ColorGameLedCustomSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->updateFreqPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment$1;->this$0:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment$1;->this$0:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->setLight(II)V

    .line 175
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment$1;->this$0:Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;

    invoke-static {p0}, Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;->-$$Nest$fgetmFreqPreference(Lcom/android/settings/colorgameled/ColorGameLedCustomSettings$ColorGameLedCustomFragment;)Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
