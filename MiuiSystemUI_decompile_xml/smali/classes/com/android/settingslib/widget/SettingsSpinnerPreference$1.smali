.class public final Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/widget/SettingsSpinnerPreference;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;->this$0:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;->this$0:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    .line 2
    iget p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    .line 4
    if-ne p1, p3, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iput p3, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    return-void
    .line 14
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;->this$0:Lcom/android/settingslib/widget/SettingsSpinnerPreference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method
