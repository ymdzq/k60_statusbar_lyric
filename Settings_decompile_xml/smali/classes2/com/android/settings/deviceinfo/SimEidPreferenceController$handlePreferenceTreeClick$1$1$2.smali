.class final Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1$2;
.super Ljava/lang/Object;
.source "SimEidPreferenceController.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $eidString:Ljava/lang/CharSequence;

.field final synthetic $preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1$2;->$preference:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1$2;->$eidString:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1$2;->$preference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/SimEidPreferenceController$handlePreferenceTreeClick$1$1$2;->$eidString:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
