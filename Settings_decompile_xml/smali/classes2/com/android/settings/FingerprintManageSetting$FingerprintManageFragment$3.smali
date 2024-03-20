.class Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$3;
.super Ljava/lang/Object;
.source "FingerprintManageSetting.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$3;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 181
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 182
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$3;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    invoke-static {p0, p1}, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->-$$Nest$msetFodVibrateSwitchEnable(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Z)V

    const/4 p0, 0x1

    return p0
.end method
