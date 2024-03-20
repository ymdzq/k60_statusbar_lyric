.class public final synthetic Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/speaker/SpeakerSettings;

.field public final synthetic f$1:Lcom/android/settings/speaker/SpeakerProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/speaker/SpeakerSettings;Lcom/android/settings/speaker/SpeakerProgressDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/speaker/SpeakerSettings;

    iput-object p2, p0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;->f$1:Lcom/android/settings/speaker/SpeakerProgressDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/speaker/SpeakerSettings;

    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings$$ExternalSyntheticLambda5;->f$1:Lcom/android/settings/speaker/SpeakerProgressDialog;

    invoke-static {v0, p0, p1}, Lcom/android/settings/speaker/SpeakerSettings;->$r8$lambda$a_bDeOqbXpSsgc75QPmhNsYGWBM(Lcom/android/settings/speaker/SpeakerSettings;Lcom/android/settings/speaker/SpeakerProgressDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
