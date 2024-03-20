.class public final synthetic Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

.field public final synthetic f$1:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;->f$1:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$$ExternalSyntheticLambda4;->f$1:Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;->$r8$lambda$3BprKKBn1b1AOX1eh3fL9fYph6A(Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment$HardKeyboardDeviceInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
