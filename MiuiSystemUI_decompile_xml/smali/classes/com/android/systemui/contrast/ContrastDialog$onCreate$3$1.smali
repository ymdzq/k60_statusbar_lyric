.class public final Lcom/android/systemui/contrast/ContrastDialog$onCreate$3$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $contrastLevel:I

.field public final synthetic this$0:Lcom/android/systemui/contrast/ContrastDialog;


# direct methods
.method public constructor <init>(ILcom/android/systemui/contrast/ContrastDialog;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$3$1;->$contrastLevel:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$3$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$3$1;->$contrastLevel:I

    .line 2
    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->fromContrastLevel(I)F

    .line 4
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$3$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/contrast/ContrastDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    move-result p0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    check-cast v0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 27
    const-string v1, "contrast_level"

    .line 29
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    return-void
    .line 34
.end method
