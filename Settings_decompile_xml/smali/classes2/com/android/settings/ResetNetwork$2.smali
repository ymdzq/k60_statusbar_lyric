.class Lcom/android/settings/ResetNetwork$2;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetwork;->establishInitialState(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetwork;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetwork;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    iput p2, p0, Lcom/android/settings/ResetNetwork$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 369
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 371
    iget-object p1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-static {p1}, Lcom/android/settings/ResetNetwork;->-$$Nest$fgetmChoice(Lcom/android/settings/ResetNetwork;)I

    move-result p1

    iget v1, p0, Lcom/android/settings/ResetNetwork$2;->val$index:I

    if-ne p1, v1, :cond_0

    return v0

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-static {p1, v1}, Lcom/android/settings/ResetNetwork;->-$$Nest$fputmChoice(Lcom/android/settings/ResetNetwork;I)V

    move p1, v0

    .line 375
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-static {v1}, Lcom/android/settings/ResetNetwork;->-$$Nest$fgetmRadioButtonPreferenceGroup(Lcom/android/settings/ResetNetwork;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 376
    iget v1, p0, Lcom/android/settings/ResetNetwork$2;->val$index:I

    if-eq p1, v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-static {v1}, Lcom/android/settings/ResetNetwork;->-$$Nest$fgetmRadioButtonPreferenceGroup(Lcom/android/settings/ResetNetwork;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p2

    .line 382
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ResetNetwork$2;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-static {p1}, Lcom/android/settings/ResetNetwork;->-$$Nest$fgetmChoice(Lcom/android/settings/ResetNetwork;)I

    move-result p1

    iget p0, p0, Lcom/android/settings/ResetNetwork$2;->val$index:I

    if-eq p1, p0, :cond_4

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    return p2
.end method
