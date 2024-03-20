.class Lcom/android/settings/widget/TogglePreference$1;
.super Ljava/lang/Object;
.source "TogglePreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/TogglePreference;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/TogglePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/TogglePreference;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/widget/TogglePreference$1;->this$0:Lcom/android/settings/widget/TogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 38
    iget-object p2, p0, Lcom/android/settings/widget/TogglePreference$1;->this$0:Lcom/android/settings/widget/TogglePreference;

    invoke-static {p2}, Lcom/android/settings/widget/TogglePreference;->-$$Nest$fgetmOnBeforeListener(Lcom/android/settings/widget/TogglePreference;)Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/widget/TogglePreference$1;->this$0:Lcom/android/settings/widget/TogglePreference;

    invoke-interface {p2, p0, p1}, Lcom/android/settings/widget/TogglePreference$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/widget/TogglePreference;Z)Z

    const/4 p0, 0x1

    return p0
.end method
