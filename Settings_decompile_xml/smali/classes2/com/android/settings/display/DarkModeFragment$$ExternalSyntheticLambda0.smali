.class public final synthetic Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/DarkModeFragment;

.field public final synthetic f$1:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/DarkModeFragment;

    iput-object p2, p0, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    iput-object p3, p0, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/DarkModeFragment;

    iget-object v1, p0, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;

    iget-object p0, p0, Lcom/android/settings/display/DarkModeFragment$$ExternalSyntheticLambda0;->f$2:Landroidx/preference/Preference;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/display/DarkModeFragment;->$r8$lambda$zmzaUaz17aLY-9XNEhrikQKxoQ4(Lcom/android/settings/display/DarkModeFragment;Lcom/android/settings/display/DarkModeFragment$FilterItemPreference;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method
