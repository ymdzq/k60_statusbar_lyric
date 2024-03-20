.class Lcom/android/settings/backup/LocalComputerController$1;
.super Ljava/lang/Object;
.source "LocalComputerController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/LocalComputerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/LocalComputerController;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/LocalComputerController;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/backup/LocalComputerController$1;->this$0:Lcom/android/settings/backup/LocalComputerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 48
    check-cast p1, Lcom/android/settings/backup/CustomRadioButtonPreference;

    const/4 p0, 0x0

    .line 49
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return p0
.end method
