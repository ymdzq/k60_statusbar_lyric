.class public interface abstract Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin$PersonData;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PEOPLE_HUB_PERSON_EXTRACTOR"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PEOPLE_HUB_PERSON_EXTRACTOR"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract extractPerson(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin$PersonData;
.end method

.method public extractPersonKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;->extractPerson(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin$PersonData;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin$PersonData;->key:Ljava/lang/String;

    .line 6
    return-object p0
    .line 8
.end method

.method public isPersonNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;->extractPersonKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method
