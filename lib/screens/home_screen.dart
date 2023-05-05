import 'package:c317_mobile/components/action_card.dart';
import 'package:c317_mobile/components/class_card.dart';
import 'package:c317_mobile/providers/class_provider.dart';
import 'package:c317_mobile/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../components/profile_picture.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    final ClassProvider classProvider =
        Provider.of<ClassProvider>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 56.0, 24.0, 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfilePicture(),
            Text(
              'Bem vindo(a)',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    userProvider.user?.name ?? '',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
                Icon(Icons.waving_hand,
                    color: Theme.of(context).colorScheme.primary),
              ],
            ),
            FutureBuilder<void>(
              future: classProvider.getClasses(userProvider.user),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return const SizedBox();
                  }
                  final classes = classProvider.classes;
                  final nextClass = classes.first;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                        child: Text('Sua próxima aula é',
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                      ClassCard(
                        subject: nextClass.subject.name,
                        date: nextClass.date,
                        location: nextClass.location,
                      ),
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
              child: ActionCard(
                title: 'Ligar para a universidade',
                description: 'Ver números da universidade para atendimento',
                onPressed: () {
                  context.pushNamed('information', params: {
                    'title': 'Contatos',
                    'subtitle': 'Números',
                    'isTeacherList': 'false'
                  });
                },
                icon: Icons.phone,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            ActionCard(
              title: 'E-mail dos professores',
              description: 'Veja os e-mails dos professores para tirar dúvidas',
              onPressed: () {
                context.pushNamed('information', params: {
                  'title': 'Contatos',
                  'subtitle': 'Professores',
                  'isTeacherList': 'true'
                });
              },
              icon: Icons.mail,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
