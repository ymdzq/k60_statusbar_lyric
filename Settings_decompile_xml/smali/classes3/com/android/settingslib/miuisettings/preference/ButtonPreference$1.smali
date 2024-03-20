.class Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;
.super Ljava/lang/Object;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settingslib/miuisettings/preference/ButtonPreference;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-static {p1}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->-$$Nest$fgetmListener(Lcom/android/settingslib/miuisettings/preference/ButtonPreference;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-static {p1}, Lcom/android/settingslib/miuisettings/preference/ButtonPreference;->-$$Nest$fgetmListener(Lcom/android/settingslib/miuisettings/preference/ButtonPreference;)Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/ButtonPreference$1;->this$0:Lcom/android/settingslib/miuisettings/preference/ButtonPreference;

    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
