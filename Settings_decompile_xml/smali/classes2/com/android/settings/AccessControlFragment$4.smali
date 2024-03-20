.class Lcom/android/settings/AccessControlFragment$4;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControlFragment;->updatePrivacyEnabledPreference(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/AccessControlFragment$4;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 173
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
