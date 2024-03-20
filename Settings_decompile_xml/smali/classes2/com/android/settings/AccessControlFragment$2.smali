.class Lcom/android/settings/AccessControlFragment$2;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControlFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 67
    iput-object p1, p0, Lcom/android/settings/AccessControlFragment$2;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    .line 71
    iget-object p0, p0, Lcom/android/settings/AccessControlFragment$2;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/AccessControlFragment;->-$$Nest$msetVisibilePattern(Lcom/android/settings/AccessControlFragment;Z)V

    const/4 p0, 0x1

    return p0
.end method
