.class public final synthetic Lcom/android/settings/IccLockSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/IccLockSettings;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/IccLockSettings;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/IccLockSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/IccLockSettings;

    iput-object p2, p0, Lcom/android/settings/IccLockSettings$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/IccLockSettings;

    iget-object p0, p0, Lcom/android/settings/IccLockSettings$$ExternalSyntheticLambda1;->f$1:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/android/settings/IccLockSettings;->$r8$lambda$AHdkStCadVurbFtEMa34YSI-AS8(Lcom/android/settings/IccLockSettings;Landroid/widget/EditText;)V

    return-void
.end method
